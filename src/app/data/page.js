'use client';
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const SchoolsPage = () => {
  const [schools, setSchools] = useState([]);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await axios.get('http://localhost:3000/api/handleform');
        if (response.data.success) {
          setSchools(response.data.data);
          console.log(response.data.data);
          // Log the state after it has been updated
          console.log('data', schools);
        } else {
          setError(response.data.message);
        }
      } catch (error) {
        console.error('Fetch error:', error);
        setError('Internal Server Error');
      }
    };

    fetchData();
  }, []);

  return (
    <div className="bg-violet-300">
    
      <h1 className='text-center font-bold text-4xl mb-2 py-6 border-b-2  border-t-2 border-black'> Your School</h1>
      {error ? (
        <p>Error: {error}</p>
      ) : (
        <div className="flex flex-wrap justify-center">
        {schools.map((school) => (
          <div key={school.id} className="max-w-md rounded overflow-hidden bg-gradient-to-r from-blue-400 to-indigo-400 hover:from-indigo-400 hover:to-blue-400 shadow-lg m-4">
            <img className="w-96 h-48 object-cover" src={`/schoolImages/${school.image}`} alt={school.name} />
            <div className="px-6 py-4">
              <div className="font-bold text-md mb-2">School Name: {school.name}</div>
              <div className="flex flex-wrap gap-4 justify-between">
                <div>
              <p className="text-gray-700 text-base"><span className="text-black font-bold">City: </span>{school.city}</p>
              <p className="text-gray-700 text-base"> <span className="text-black font-bold">State:</span> {school.state}</p>
              </div>
              <div>
              <p className="text-gray-700 text-base"><span className="text-black font-bold"> Address: </span>{school.address}</p>
              <p className="text-gray-700 text-base"><span className="text-black font-bold">No.:</span> {school.number}</p>
              </div>
            </div>
            </div>
          </div>
        ))}
      </div>
      
      )}
    </div>
  );
};

export default SchoolsPage;
